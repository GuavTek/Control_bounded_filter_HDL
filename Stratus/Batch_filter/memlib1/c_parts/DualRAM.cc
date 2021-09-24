
///////////////////////////////////////////////////////////////////////////////
//
// Copyright (c) 2017 Cadence Design Systems, Inc. All rights reserved worldwide.
//
// The code contained herein is the proprietary and confidential information 
// of Cadence or its licensors, and is supplied subject to a previously 
// executed license and maintenance agreement between Cadence and customer. 
// This code is intended for use with Cadence high-level synthesis tools and 
// may not be used with other high-level synthesis tools. Permission is only 
// granted to distribute the code as indicated. Cadence grants permission for 
// customer to distribute a copy of this code to any partner to aid in designing 
// or verifying the customer's intellectual property, as long as such 
// distribution includes a restriction of no additional distributions from the 
// partner, unless the partner receives permission directly from Cadence.
//
// ALL CODE FURNISHED BY CADENCE IS PROVIDED "AS IS" WITHOUT WARRANTY OF ANY
// KIND, AND CADENCE SPECIFICALLY DISCLAIMS ANY WARRANTY OF NONINFRINGEMENT, 
// FITNESS FOR A PARTICULAR PURPOSE OR MERCHANTABILITY. CADENCE SHALL NOT BE 
// LIABLE FOR ANY COSTS OF PROCUREMENT OF SUBSTITUTES, LOSS OF PROFITS, 
// INTERRUPTION OF BUSINESS, OR FOR ANY OTHER SPECIAL, CONSEQUENTIAL OR 
// INCIDENTAL DAMAGES, HOWEVER CAUSED, WHETHER FOR BREACH OF WARRANTY, 
// CONTRACT, TORT, NEGLIGENCE, STRICT LIABILITY OR OTHERWISE.
//
////////////////////////////////////////////////////////////////////////////////


// Generated by bdw_memgen 19.27-s100
// Thu Apr 22 16:25:12 CEST 2021

#if ! defined DualRAM_CC
#define DualRAM_CC 1
#if defined STRATUS  &&  ! defined CYN_DONT_SUPPRESS_MSGS
#pragma cyn_suppress_msgs NOTE
#endif	// STRATUS  &&  CYN_DONT_SUPPRESS_MSGS
#include "DualRAM.h"
 
#ifdef STRATUS_HLS
   sc_uint<3> DualRAM::read0(sc_uint<8> A0, bool WE0) {
      sc_uint<3> DOUT0;
      CYN_BIND(WE0,this->WE0);
      CYN_BIND(A0,this->A0);
      CYN_BIND(DOUT0,this->DOUT0);
      HLS_CONFIG_INSTRUCTION( "access_port", 1 );
      DOUT0 = mem[A0];
      return DOUT0;
   }

#endif	// STRATUS_HLS
#ifdef STRATUS_HLS
   sc_uint<3> DualRAM::write0(sc_uint<8> A0, sc_uint<3> DIN0, bool WE0) {

      CYN_BIND(WE0,this->WE0);
      CYN_BIND(A0,this->A0);
      CYN_BIND(DIN0,this->DIN0);
      HLS_CONFIG_INSTRUCTION( "access_port", 1 );
      mem[A0] = DIN0;
      return DIN0;
   }

#endif	// STRATUS_HLS
#ifdef STRATUS_HLS
   void DualRAM::nop0(bool WE0) {
      CYN_BIND(WE0,this->WE0);
      HLS_CONFIG_INSTRUCTION( "access_port", 1 );
   }

#endif	// STRATUS_HLS
#ifdef STRATUS_HLS
   sc_uint<3> DualRAM::read1(sc_uint<8> A1, bool WE1) {
      sc_uint<3> DOUT1;
      bool WE1_noconn=0;
      CYN_BIND(WE1,WE1_noconn);
      CYN_BIND(A1,this->A1);
      CYN_BIND(DOUT1,this->DOUT1);
      HLS_CONFIG_INSTRUCTION( "access_port", 2 );
      DOUT1 = mem[A1];
      return DOUT1;
   }

#endif	// STRATUS_HLS
#ifdef STRATUS_HLS
   void DualRAM::nop1() {
      HLS_CONFIG_INSTRUCTION( "access_port", 2 );
   }

#endif	// STRATUS_HLS
   void DualRAM::thread0() {
#if defined(__GNUC__) && BDW_USE_SCV
    if ( m_p1_tx_0.is_active() ) {
        m_p1_tx_stream->end_tx( m_p1_tx_0, DOUT0.read() );
    }
#endif
#if defined(__GNUC__)
      // Perform an address range check to prevent crashes on out of bounds
      // accesses in SystemC behavioral simulations.
      if((int)(A0.read()) <= 255) {
#endif
        if(WE0.read() == 0) {

#if defined(__GNUC__) && defined(BDW_DEBUG_MEMS)
          if (   (sc_time_stamp().to_double() == m_last_read_time) 
		      && (sc_time_stamp().to_double() > 0.0) 
			  && (m_last_read_addr == A0.read().to_uint64())) {
            fprintf(stderr,"WARNING: %s: %s: Both a read and a write were performed at address %d\n", name(), sc_time_stamp().to_string().c_str(), (int)A0.read());
          }
          m_last_write_time = sc_time_stamp().to_double();
          m_last_write_addr = A0.read().to_uint64();
          m_num_errors++;
#if defined(__GNUC__) && (BDW_DEBUG_MEMS > 1)
          if (m_num_errors > BDW_DEBUG_MEMS) {
            fprintf(stderr,"Stopping simulation because more than %d errors have occurred\n", BDW_DEBUG_MEMS );
		    sc_stop();
          }
#endif
#endif

#if defined(__GNUC__) && BDW_USE_SCV
            m_p1_tx_0 = m_p1_tx_stream->begin_write_tx( A0.read(), DIN0.read() );
#endif

#if defined(__GNUC__) && defined(BDW_TRACE_MEMS)
        fprintf(stderr,"TRACE: %s%s: %s: write 0x%s to 0x%x\n", name(), "", sc_time_stamp().to_string().c_str(), DIN0.read().to_string(SC_HEX).c_str(), (int)A0.read().to_uint());
#endif
        mem[A0.read().to_uint()] = DIN0.read();
#if defined(__GNUC__)
            sync_put(A0.read().to_uint());
#endif
        } else {

#if defined(__GNUC__) && defined(BDW_DEBUG_MEMS)
          if (   (sc_time_stamp().to_double() == m_last_write_time) 
		      && (sc_time_stamp().to_double() > 0.0) 
			  && (m_last_write_addr == A0.read().to_uint64())) {
            fprintf(stderr,"WARNING: %s: %s: Both a read and a write were performed at address %d\n", name(), sc_time_stamp().to_string().c_str(), (int)A0.read());
          }
          m_last_read_time = sc_time_stamp().to_double();
          m_last_read_addr = A0.read().to_uint64();
          m_num_errors++;
#if defined(__GNUC__) && (BDW_DEBUG_MEMS > 1)
          if (m_num_errors > BDW_DEBUG_MEMS) {
            fprintf(stderr,"Stopping simulation because more than %d errors have occurred\n", BDW_DEBUG_MEMS );
		    sc_stop();
          }
#endif
#endif

#if defined(__GNUC__) 
#if BDW_USE_SCV
            m_p1_tx_0 = m_p1_tx_stream->begin_read_tx( A0.read() );
#endif
            sync_get(A0.read().to_uint());
#endif

#if defined(__GNUC__) && defined(BDW_TRACE_MEMS)
        fprintf(stderr,"TRACE: %s: %s: read 0x%s from 0x%x\n", name(), sc_time_stamp().to_string().c_str(), mem[A0.read().to_uint()].to_string(SC_HEX).c_str(), (int)A0.read().to_uint());
#endif
        DOUT0 = mem[A0.read().to_uint()];
        }

#if defined(__GNUC__)
      }
#endif
  }
   void DualRAM::thread1() {
#if defined(__GNUC__) && BDW_USE_SCV
    if ( m_p2_tx_0.is_active() ) {
        m_p2_tx_stream->end_tx( m_p2_tx_0, DOUT1.read() );
    }
#endif
#if defined(__GNUC__)
      // Perform an address range check to prevent crashes on out of bounds
      // accesses in SystemC behavioral simulations.
      if((int)(A1.read()) <= 255) {
#endif

#if defined(__GNUC__) && defined(BDW_DEBUG_MEMS)
          if (   (sc_time_stamp().to_double() == m_last_write_time) 
		      && (sc_time_stamp().to_double() > 0.0) 
			  && (m_last_write_addr == A1.read().to_uint64())) {
            fprintf(stderr,"WARNING: %s: %s: Both a read and a write were performed at address %d\n", name(), sc_time_stamp().to_string().c_str(), (int)A1.read());
          }
          m_last_read_time = sc_time_stamp().to_double();
          m_last_read_addr = A1.read().to_uint64();
          m_num_errors++;
#if defined(__GNUC__) && (BDW_DEBUG_MEMS > 1)
          if (m_num_errors > BDW_DEBUG_MEMS) {
            fprintf(stderr,"Stopping simulation because more than %d errors have occurred\n", BDW_DEBUG_MEMS );
		    sc_stop();
          }
#endif
#endif

#if defined(__GNUC__) 
#if BDW_USE_SCV
            m_p2_tx_0 = m_p2_tx_stream->begin_read_tx( A1.read() );
#endif
            sync_get(A1.read().to_uint());
#endif

#if defined(__GNUC__) && defined(BDW_TRACE_MEMS)
        fprintf(stderr,"TRACE: %s: %s: read 0x%s from 0x%x\n", name(), sc_time_stamp().to_string().c_str(), mem[A1.read().to_uint()].to_string(SC_HEX).c_str(), (int)A1.read().to_uint());
#endif
        DOUT1 = mem[A1.read().to_uint()];
#if defined(__GNUC__)
      }
#endif
  }
#if defined(STRATUS_VLG)
   DualRAM::DualRAM(const sc_module_name name)
      : sc_module( name ) ,CLK("CLK"),WE0("WE0"),DIN0("DIN0"),DOUT0("DOUT0"),A0("A0"),DOUT1("DOUT1"),A1("A1"), mem()
#else
   DualRAM::DualRAM( sc_module_name name)
      : sc_module( name ) ,CLK("CLK"),WE0("WE0"),DIN0("DIN0"),DOUT0("DOUT0"),A0("A0"),DOUT1("DOUT1"),A1("A1"), mem() 
#if defined(__GNUC__) 
#if defined(BDW_DEBUG_MEMS)
		, m_last_read_time(-1), m_last_write_time(-1), m_last_read_addr(0), m_last_write_addr(0), m_num_errors(0)
#endif
		, m_iface(0)
#endif
#endif
   {
#ifdef STRATUS_HLS
      SC_CTHREAD( thread0, (CLK).pos() );
#else
      SC_METHOD( thread0 );
      sensitive << (CLK).pos();

#endif
#ifdef STRATUS_HLS
      SC_CTHREAD( thread1, (CLK).pos() );
#else
      SC_METHOD( thread1 );
      sensitive << (CLK).pos();

#endif
#ifndef STRATUS_HLS
      dont_initialize();
#endif
#if defined(__GNUC__) && BDW_USE_SCV
    esc_enable_scv_logging();
    m_p1_tx_stream = new cynw_scv_memory_tx_stream< sc_uint<8>, sc_uint<3> >( (std::string("sc_main.") + std::string(this->name()) + std::string("_port0")).c_str(), esc_get_scv_tr_db() );
    m_p2_tx_stream = new cynw_scv_memory_tx_stream< sc_uint<8>, sc_uint<3> >( (std::string("sc_main.") + std::string(this->name()) + std::string("_port1")).c_str(), esc_get_scv_tr_db() );
#endif
 
   }

const unsigned long DualRAM::implemented = 1;
const unsigned long DualRAM::pipelined = 1;
const float DualRAM::area = 0.0000;
const float DualRAM::delay = 0.0000;
const float DualRAM::setup_time = 0.0000;
const unsigned long DualRAM::latency_WE0 = 1;
const unsigned long DualRAM::latency_DIN0 = 1;
const unsigned long DualRAM::latency_A0 = 1;
const unsigned long DualRAM::bits_per_maskbit_WM0 = 0;
const unsigned long DualRAM::latency_A1 = 1;
const unsigned long DualRAM::bits_per_maskbit_WM1 = 0;
const unsigned long DualRAM::reg_mem_inputs = 0;
const unsigned long DualRAM::reg_mem_outputs = 0;
const unsigned long DualRAM::regs_at_mem_inputs = 0;
const unsigned long DualRAM::regs_at_mem_outputs = 0;
const unsigned long DualRAM::no_spec_reads = 1;
const unsigned long DualRAM::is_mem = 1;
const unsigned long DualRAM::clock_multiplier = 0;
const bool DualRAM::has_extra_ports = false;
const bool DualRAM::is_prototype = true;
const char* DualRAM::naming_convention = "${name}_${words}X${width}";
 
#endif // DualRAM_CC
